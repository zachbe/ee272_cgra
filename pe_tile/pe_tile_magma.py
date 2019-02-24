import magma
import mantle
import generator.generator as generator
from global_controller.global_controller_magma import GlobalController
from interconnect.interconnect_magma import Interconnect
from column.column_magma import ColumnMeso
from tile.tile_magma import Tile
from pe_core.pe_core_magma import PECore
from memory_core.memory_core_magma import MemCore
from common.side_type import SideType
from common.jtag_type import JTAGType
from generator.from_magma import FromMagma
from generator.const import Const

tile = Tile(PECore())
tile_circ = tile.circuit()
magma.compile("pe_tile", tile_circ, output="coreir-verilog")