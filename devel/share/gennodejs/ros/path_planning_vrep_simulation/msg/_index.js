
"use strict";

let Step = require('./Step.js');
let RobotData = require('./RobotData.js');
let FieldObjects = require('./FieldObjects.js');
let All_XML_PATHS = require('./All_XML_PATHS.js');
let RobotMovement = require('./RobotMovement.js');
let MarkerData = require('./MarkerData.js');
let ObstacleData = require('./ObstacleData.js');
let Point2d = require('./Point2d.js');
let AllPathes = require('./AllPathes.js');
let GoalData = require('./GoalData.js');
let XML_PATH = require('./XML_PATH.js');
let Path = require('./Path.js');
let WheelRotationData = require('./WheelRotationData.js');

module.exports = {
  Step: Step,
  RobotData: RobotData,
  FieldObjects: FieldObjects,
  All_XML_PATHS: All_XML_PATHS,
  RobotMovement: RobotMovement,
  MarkerData: MarkerData,
  ObstacleData: ObstacleData,
  Point2d: Point2d,
  AllPathes: AllPathes,
  GoalData: GoalData,
  XML_PATH: XML_PATH,
  Path: Path,
  WheelRotationData: WheelRotationData,
};
