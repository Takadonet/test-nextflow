#!/usr/bin/env nextflow
/*
    Test Workflow Input
*/
nextflow.enable.dsl = 2

// Validate Inputs
NextflowInitialize.validateParams(workflow, params, log)

// Modules
include { wc_file_to_output; wc_file_to_stdout } from './modules/modules.nf'

// Execute main workflow
workflow {
    ch_input = Channel.fromPath( params.input )
    wc_file_to_output( ch_input )
    wc_file_to_stdout( ch_input ) | view
}
