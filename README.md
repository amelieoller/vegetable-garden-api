# Vegetable Garden APP

## Tools:
* Rails
* Active Record Gem
* Active Model Serializer Gem

* React
* Redux
* Redux Thunk

## Models:
* Crop
   * name:String:Required
   * days_to_maturity:Integer
   * has_many varietals
* Varietal
   * Name:String:Required
   * days_to_maturity:Integer
   * belongs_to crop
* Planting
   * date_planted:Datetime:Required
   * active:Boolean
   * has_one crop
   * has_one varietal

## Routes:
* Crop Routes
   * GET /api/crops - returns all crops
   * POST /api/crops - creates new crop
   * GET /api/crops/:id - returns single crop
   * PUT /api/crops/:id - updates crop
   * DELETE /api/crops/:id - deletes crop
* Varietal Routes
   * GET /api/crops/:crop_id/varietals - returns all varietals of a crop
   * POST /api/crops/:crop_id/varietals - creates new varietal of a crop
   * GET /api/crops/:crop_id/varietals/:id - returns single varietal of a crop
   * PUT /api/crops/:crop_id/varietals/:id - updates varietal of a crop
   * DELETE /api/crops/:crop_id/varietals/:id - deletes varietal of a crop
* Planting Routes
   * GET /api/plantings - returns all plantings
   * POST /api/plantings - creates new planting
   * GET /api/plantings/:id - returns single planting
   * PUT /api/plantings/:id - updates planting
   * DELETE /api/plantings/:id - deletes planting

