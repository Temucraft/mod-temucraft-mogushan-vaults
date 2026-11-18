/*
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 */

// Names LegionCore's scripts use that AzerothCore doesn't have: its generic EVENT_n / ACTION_n ids and a few helpers.
#pragma once

#include "InstanceScript.h"
#include "Map.h"
#include "Player.h"
#include "ScriptedCreature.h"
#include <cmath>
#include <list>

enum TemucraftLegionEvents
{
    EVENT_1 = 1, EVENT_2, EVENT_3, EVENT_4, EVENT_5, EVENT_6, EVENT_7, EVENT_8, EVENT_9, EVENT_10,
    EVENT_11, EVENT_12, EVENT_13, EVENT_14, EVENT_15, EVENT_16, EVENT_17, EVENT_18, EVENT_19, EVENT_20,
    EVENT_21, EVENT_22, EVENT_23, EVENT_24, EVENT_25, EVENT_26, EVENT_27, EVENT_28, EVENT_29, EVENT_30,
    EVENT_31, EVENT_32, EVENT_33, EVENT_34, EVENT_35, EVENT_36, EVENT_37, EVENT_38, EVENT_39, EVENT_40
};

enum TemucraftLegionActions
{
    ACTION_1 = 1, ACTION_2, ACTION_3, ACTION_4, ACTION_5, ACTION_6, ACTION_7, ACTION_8, ACTION_9, ACTION_10,
    ACTION_11, ACTION_12, ACTION_13, ACTION_14, ACTION_15, ACTION_16, ACTION_17, ACTION_18, ACTION_19, ACTION_20
};

// true when nobody alive (game masters aside) is left in the instance
inline bool TemucraftIsWipe(Map* map)
{
    for (auto const& ref : map->GetPlayers())
        if (Player* player = ref.GetSource())
            if (player->IsAlive() && !player->IsGameMaster())
                return false;
    return true;
}

inline bool TemucraftIsWipe(InstanceScript* instance) { return instance && TemucraftIsWipe(instance->instance); }

// creature that never moves to its target
struct Scripted_NoMovementAI : public ScriptedAI
{
    explicit Scripted_NoMovementAI(Creature* creature) : ScriptedAI(creature) { }

    void AttackStart(Unit* target) override
    {
        if (target && me->Attack(target, true))
            DoStartNoMovement(target);
    }
};

inline void GetPlayerListInGrid(std::list<Player*>& list, WorldObject const* source, float range)
{
    for (auto const& ref : source->GetMap()->GetPlayers())
        if (Player* player = ref.GetSource())
            if (source->GetDistance(player) <= range)
                list.push_back(player);
}

inline void GetRandPosFromCenterInDist(float centerX, float centerY, float dist, float& x, float& y)
{
    float angle = frand(0.0f, 2.0f * float(M_PI));
    x = centerX + dist * std::cos(angle);
    y = centerY + dist * std::sin(angle);
}

inline void GetPositionWithDistInOrientation(WorldObject const* source, float dist, float orientation, float& x, float& y)
{
    x = source->GetPositionX() + dist * std::cos(orientation);
    y = source->GetPositionY() + dist * std::sin(orientation);
}

// LegionCore difficulty ids as the 3.3.5 ones (looking-for-raid and challenge modes don't exist here)
constexpr Difficulty DIFFICULTY_NORMAL = DUNGEON_DIFFICULTY_NORMAL;
constexpr Difficulty DIFFICULTY_HEROIC = DUNGEON_DIFFICULTY_HEROIC;
constexpr Difficulty DIFFICULTY_10_N = RAID_DIFFICULTY_10MAN_NORMAL;
constexpr Difficulty DIFFICULTY_25_N = RAID_DIFFICULTY_25MAN_NORMAL;
constexpr Difficulty DIFFICULTY_10_HC = RAID_DIFFICULTY_10MAN_HEROIC;
constexpr Difficulty DIFFICULTY_25_HC = RAID_DIFFICULTY_25MAN_HEROIC;
constexpr Difficulty DIFFICULTY_LFR = Difficulty(250);
constexpr Difficulty DIFFICULTY_CHALLENGE = Difficulty(251);

// CastCustomSpell with a float base point 0, as LegionCore passes it
inline void TemucraftCastBp0(Unit* caster, Unit* target, uint32 spellId, float bp0, bool triggered)
{
    int32 bp = int32(bp0);
    caster->CastCustomSpell(target, spellId, &bp, nullptr, nullptr, triggered);
}
