class Object

  %w( fucking fuck damn god goddamn goddammit cunt ass shit bitch chickenfucker motherfucker ).each do |word|
    sym = word.to_sym
    define_method(sym) {|*args| self } unless respond_to?(sym)

    sym = "#{ word }!".to_sym
    define_method(sym) {|*args| self } unless respond_to?(sym)
  end

end
