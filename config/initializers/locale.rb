[Date, Time, ActiveSupport::TimeWithZone].each do |klass|
  klass.instance_eval do
    define_method :locale do |*args|
      format = args.first || :default
      I18n.localize(self, :format => format)
    end
  end
end

include ActionView::Helpers::NumberHelper
[Float, BigDecimal].each do |klass|
  klass.instance_eval do
    define_method :locale do
      number_with_precision(self.to_f, :precision => 2)
    end
  end
end

[TrueClass, FalseClass].each do |klass|
  klass.instance_eval do
    define_method :locale do
      I18n.t("helpers.#{to_s}_value")
    end
  end
end

class NilClass

    def locale(*args)
    end

end