Factory.define :user do |f|
    f.username "BobSmith"
    f.password "secret"
    f.password_confirmation { |u| u.password }
end