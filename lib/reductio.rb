module Reductio
  Add = proc { |x, y|
    x + y
  }.curry

  Compose = proc { |*funcs|
    funcs.reduce { |x, y|
      proc { |*args|
        x.(y.(*args))
      }
    }
  }
end
