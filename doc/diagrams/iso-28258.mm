classDiagram

    TrialPit --|> Plot
    Borehole --|> Plot
    Surface --|> Plot

    Layer --|> ProfileElement
    Horizon --|> ProfileElement

    Plot --> Site
    Profile --> Plot
    ProfileElement --> Profile

    class SoilSpecimen {
    }
