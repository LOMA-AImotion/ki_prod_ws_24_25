from minizinc import Instance, Model, Solver

# Load optimization model from file
import os
opt_model_file = os.path.join(os.path.dirname(__file__), 'optimization_model.mzn')


opt_model = Model(opt_model_file)

# Find the MiniZinc solver configuration for Gecode
gecode = Solver.lookup("gecode")

# Create an Instance of the optimization model for Gecode
instance = Instance(gecode, opt_model)

# assign some open parameters
instance["n"] = 5 # 5 Agents
instance["m"] = 3 # 3 should be selected

result = instance.solve()

# Output the array "selected"
print(result["selected"])