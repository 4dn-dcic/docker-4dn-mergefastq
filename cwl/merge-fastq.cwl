#!/usr/bin/env cwl-runner

class: CommandLineTool

cwlVersion: v1.0

requirements:
- class: DockerRequirement
  dockerPull: "4dndcic/4dn-merge-fastq:v1"

- class: "InlineJavascriptRequirement"

inputs:
  outprefix:
    type: string
    inputBinding:
      position: 1
      separate: true
    default: "out"

  input_fastqs:
    inputBinding:
      itemSeparator: " "
      position: 2
      separate: true
    type:
      - "null"
      -
        items: "File"
        type: "array"

outputs:
  merged_fastq:
    type: File
    outputBinding:
      glob: "$(inputs.outprefix + '.fastq.gz')"

baseCommand: ["run-merge-fastq.sh"]
