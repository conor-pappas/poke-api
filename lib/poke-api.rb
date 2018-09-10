require "poke-api/api_wrapper"
require "poke-api/client"
require "poke-api/result_enumerator"
require "poke-api/version"

module PokeAPI
  RESOURCES = %w(
    evolution-chain
    move-battle-style
    generation
    evolution-trigger
    move
    encounter-condition-value
    pokemon
    move-damage-class
    ability
    pal-park-area
    contest-effect
    machine
    version
    pokemon-color
    location
    item-attribute
    pokeathlon-stat
    pokemon-habitat
    type
    pokemon-shape
    item-pocket
    pokemon-species
    stat
    encounter-method
    berry-flavor
    nature
    pokemon-form
    item-fling-effect
    super-contest-effect
    move-ailment
    item-category
    move-learn-method
    move-target
    location-area
    move-category
    language
    gender
    region
    growth-rate
    item
    version-group
    berry
    characteristic
    egg-group
    contest-type
    berry-firmness
    encounter-condition
    pokedex
  ).freeze
end
