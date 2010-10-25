xml.instruct!
xml.data do
  xml.trails do
    @trails.each do |trail|
      xml.trail :id => trail.id do
        xml.points do
          trail.points.each do |point|
            xml.point :id => point.id do
              xml.title point[:title]
              xml.description point[:desc]
              xml.category point.category[:name]
              xml.condition point.condition[:desc]
              xml.latitude point[:lat]
              xml.longitude point[:long]
              xml.connections do
                point.connections.each do |conn|
                  xml.connection conn[:point_id]
                end
              end
            end
          end
        end
      end
    end
  end

  xml.misc do
    @misc.each do |point|
      xml.title point[:title]
      xml.description point[:desc]
      xml.catagory point.category[:name]
      xml.condition point.condition[:desc]
      xml.latitude point[:lat]
      xml.longitude point[:long]
      point.connections.each do |conn|
        xml.connection conn[:point_id]
      end
    end
  end
end
