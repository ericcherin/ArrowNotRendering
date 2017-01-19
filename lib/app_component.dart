import 'package:angular2/core.dart';
import 'dart:html';
import 'dart:svg';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html')

class AppComponent implements AfterViewInit {
  ngAfterViewInit(){
    Element svg = querySelector('svg');

    var marks = new MarkerElement()..
    setAttribute('xmlns', "http://www.w3.org/2000/svg")..
    setAttribute('id', 'arrow')..
    setAttribute('markerWidth', '10')..
    setAttribute('markerHeight', '10')..
    setAttribute('refX', '0')..
    setAttribute('refY', '3')..
    setAttribute('orient', 'auto')..
    setAttribute('markerUnits', 'strokeWidth');

    var paths = new PathElement()..
    setAttribute('xmlns', "http://www.w3.org/2000/svg")..
    setAttribute('d', 'M0,0 L0,6 L9,3 z')..
    setAttribute('fill', 'black');

    marks.append(paths);

    var defs = new DefsElement()..append(marks)..
    setAttribute('xmlns', "http://www.w3.org/2000/svg");

    var li = new LineElement()..
    setAttribute('xmlns', "http://www.w3.org/2000/svg")..
    setAttribute('x1','0')..
    setAttribute('y1', '0')..
    setAttribute('x2', '333')..
    setAttribute('y2', '333')..
    setAttribute('stroke', 'black')..
    setAttribute('stroke-width', '3')..
    setAttribute('marker-end', 'url(#arrow)');

    svg.append(defs);
    svg.append(li);
  }
}