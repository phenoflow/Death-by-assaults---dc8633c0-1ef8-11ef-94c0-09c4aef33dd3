cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  death-by-assaults-unnatural-cause-means---secondary:
    run: death-by-assaults-unnatural-cause-means---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  death-by-assaults-unnatural-cause-vapour---secondary:
    run: death-by-assaults-unnatural-cause-vapour---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-means---secondary/output
  bioogical-death-by-assaults-unnatural-cause---secondary:
    run: bioogical-death-by-assaults-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-vapour---secondary/output
  death-by-assaults-unnatural-cause-shotgun---secondary:
    run: death-by-assaults-unnatural-cause-shotgun---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: bioogical-death-by-assaults-unnatural-cause---secondary/output
  sexual-death-by-assaults-unnatural-cause---secondary:
    run: sexual-death-by-assaults-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-shotgun---secondary/output
  death-by-assaults-unnatural-cause-moving---secondary:
    run: death-by-assaults-unnatural-cause-moving---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: sexual-death-by-assaults-unnatural-cause---secondary/output
  death-by-assaults-unnatural-cause-flame---secondary:
    run: death-by-assaults-unnatural-cause-flame---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-moving---secondary/output
  death-by-assaults-unnatural-cause-suffocation---secondary:
    run: death-by-assaults-unnatural-cause-suffocation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-flame---secondary/output
  noxious-death-by-assaults-unnatural-cause---secondary:
    run: noxious-death-by-assaults-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-suffocation---secondary/output
  death-by-assaults-unnatural-cause-syndrome---secondary:
    run: death-by-assaults-unnatural-cause-syndrome---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: noxious-death-by-assaults-unnatural-cause---secondary/output
  death-by-assaults-unnatural-cause-handgun---secondary:
    run: death-by-assaults-unnatural-cause-handgun---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-syndrome---secondary/output
  death-by-assaults-unnatural-cause-firearm---secondary:
    run: death-by-assaults-unnatural-cause-firearm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-handgun---secondary/output
  death-by-assaults-unnatural-cause-pushing---secondary:
    run: death-by-assaults-unnatural-cause-pushing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-firearm---secondary/output
  larger-death-by-assaults-unnatural-cause---secondary:
    run: larger-death-by-assaults-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-pushing---secondary/output
  death-by-assaults-unnatural-cause-force---secondary:
    run: death-by-assaults-unnatural-cause-force---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: larger-death-by-assaults-unnatural-cause---secondary/output
  corrosive-death-by-assaults-unnatural-cause---secondary:
    run: corrosive-death-by-assaults-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-force---secondary/output
  material-death-by-assaults-unnatural-cause---secondary:
    run: material-death-by-assaults-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: corrosive-death-by-assaults-unnatural-cause---secondary/output
  death-by-assaults-unnatural-cause-pesticide---secondary:
    run: death-by-assaults-unnatural-cause-pesticide---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: material-death-by-assaults-unnatural-cause---secondary/output
  death-by-assaults-unnatural-cause-vehicle---secondary:
    run: death-by-assaults-unnatural-cause-vehicle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-pesticide---secondary/output
  death-by-assaults-unnatural-cause-blunt---secondary:
    run: death-by-assaults-unnatural-cause-blunt---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-vehicle---secondary/output
  death-by-assaults-unnatural-cause-submersion---secondary:
    run: death-by-assaults-unnatural-cause-submersion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-blunt---secondary/output
  death-by-assaults-unnatural-cause-partner---secondary:
    run: death-by-assaults-unnatural-cause-partner---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-submersion---secondary/output
  death-by-assaults-unnatural-cause-person---secondary:
    run: death-by-assaults-unnatural-cause-person---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-partner---secondary/output
  sharp-death-by-assaults-unnatural-cause---secondary:
    run: sharp-death-by-assaults-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-person---secondary/output
  death-by-assaults-unnatural-cause-friend---secondary:
    run: death-by-assaults-unnatural-cause-friend---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: sharp-death-by-assaults-unnatural-cause---secondary/output
  parent-death-by-assaults-unnatural-cause---secondary:
    run: parent-death-by-assaults-unnatural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-friend---secondary/output
  death-by-assaults-unnatural-cause-abandonment---secondary:
    run: death-by-assaults-unnatural-cause-abandonment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: parent-death-by-assaults-unnatural-cause---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-assaults-unnatural-cause-abandonment---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
