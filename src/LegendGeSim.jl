# This file is a part of LegendGeSim.jl, licensed under the MIT License (MIT).

__precompile__(true)

"""
    LegendGeSim

Template for Julia packages.
"""
module LegendGeSim

# Registered packages
using ArgCheck
using ArraysOfArrays
using CurveFit
using DelimitedFiles
using Distributions
using DSP 
using ElasticArrays
using IntervalSets
using JSON
using LinearAlgebra
using Parameters
using Polynomials
using PropDicts
using RadiationDetectorDSP 
using RadiationDetectorSignals
using RadiationSpectra
using Random
using Random123
using RecipesBase
using Requires
using SolidStateDetectors
using StaticArrays
using Statistics
using StatsBase
using StructArrays
using Tables
using TypedTables
using Unitful

# Unregistered packages
using LegendDataManagement
using LegendDataTypes
using LegendHDF5IO
using LegendTextIO

import LsqFit
import SignalAnalysis

using SolidStateDetectors: ConstructiveSolidGeometry as CSG

const energy_unit = u"keV"
const ns_unit = u"ns"
const μs_unit = u"μs"

const germanium_ionization_energy = SolidStateDetectors.material_properties[:HPGe].E_ionisation # in eV

include("units.jl")

include("environment.jl")
include("pss.jl")
include("impurity.jl")
include("legend_detector_to_ssd.jl")
include("detector.jl")

include("preamp.jl")
include("fadc.jl")

include("noise.jl")
include("baselines.jl")

include("elec_chain.jl")

include("trigger.jl")
include("daq.jl")

include("pet_to_stp.jl")
include("stp_to_pss.jl")
include("pss_to_raw.jl")
include("pet_to_raw.jl")

include("waveform_utils.jl")
include("temp_utils.jl")

@info "My LegendGeSim.jl loaded"


end # module
