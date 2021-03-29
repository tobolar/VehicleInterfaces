within VehicleInterfaces.Mechanics.MultiBody;
model MultiBodyEndRooted "Ends a MultiBody chain"
//   parameter Boolean includeBearingConnector=false
//     "= true, if bearing frame connector is present, otherwise not present";

  Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing flange(includeBearingConnector=true)
    "Flange with zero force and torque applied"
    annotation (Placement(transformation(extent={{0,-20},{40,20}})));

public
  Modelica.Mechanics.Rotational.Sources.ConstantTorque zeroTorque1D(
    final tau_constant=0)
    annotation (Placement(transformation(extent={{-20,30},{0,50}})));
equation
  Connections.potentialRoot(flange.bearingFrame.R, 10);
  if Connections.isRoot(flange.bearingFrame.R) then
    flange.bearingFrame.r_0 = zeros(3);
    flange.bearingFrame.R = Modelica.Mechanics.MultiBody.Frames.nullRotation();
  else
    flange.bearingFrame.f = zeros(3);
    flange.bearingFrame.t = zeros(3);
  end if;

  connect(zeroTorque1D.flange, flange.flange) annotation (Line(
      points={{0,40},{20.1,40},{20.1,0.1}}));
  annotation (
    Documentation(info="<html>
<p>
This component is used to end a chain of multi-body components by applying
zero force and torque to the end of the chain. Uses the
<a href=\"modelica://Modelica.Mechanics.MultiBody.Interfaces.FlangeWithBearing\">FlangeWithBearing</a>
connector where the <strong>flange</strong> connector has zero torque
applied to it and the <strong>bearingFrame</strong> can be optionally
included through the parameter <code>includeBearingConnector</code>.
If <code>includeBearingConnector=true</code> then zero force and torque
is applied to the bearingFrame.
</p>
</html>"),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-60,-80},{60,80}}), graphics={Polygon(
          points={{40,-40},{40,-60},{-40,-60},{-40,60},{40,60},{40,40},{-20,
              40},{-20,-40},{40,-40}},
          lineColor={0,0,255},
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-60,-80},{60,80}})));
end MultiBodyEndRooted;
