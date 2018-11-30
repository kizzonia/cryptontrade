namespace :accounts do
  desc "closing balance cal"
  task :closing_b => :environment do
    @accounts = Account.all
    @pools = Pool.all
    @accounts.zip(@pools).each do |account, p|
    if p.pool_pl > 0
      closing_bal = account.opening_b + account.net_pl
      account.update!(closing_b: closing_bal)
    elsif p.pool_pl < -1
      closing_bal = account.opening_b - account.gross_pl
      account.update!(closing_b: closing_bal)
    end

  end
    puts "closing balance cal done"
  end

  desc "Opening Balance cal"
  task :opening_b => :environment do
    @accounts = Account.all
    @pools = Pool.all
    @accounts.zip(@pools).each do |account, p|
      opening_bal = account.closing_b
      account.update!(opening_b: opening_bal)
    end
    puts "Opening balance done..........."
  end
  desc "account_bal"
  task :account_bal => :environment do
    @accounts = Account.all
    @pools = Pool.all
    @accounts.zip(@pools).each do |account, p|
      acct_bal = account.opening_b + account.profit_bf
      account.update!(balance: acct_bal)
    end
    print "Account Balnce Updated..........."
  end
  desc "Contribution to pool"
  task :ctp => :environment do
    @accounts = Account.all
    @pools = Pool.all
    @accounts.zip(@pools).each do |account, p|
      cb = account.opening_b / p.tob
      ctb = cb * 100
      account.update!(ctp: ctb)
    end
    puts "Contribution to pool extra"
  end

desc "Gross Pl"
task :gross_pl => :environment do
  @accounts = Account.all
  @pools = Pool.all
  @accounts.zip(@pools).each do |account, p|
   gt = account.ctp / 100
   gp = gt * p.pool_pl
   account.update!(gross_pl: gp)
 end
 puts "Gross Profit calculated"
end


  desc "Net profit"
  task :net_pl => :environment do
    @accounts = Account.all
    @pools = Pool.all
    @accounts.zip(@pools).each do |account, p|
       nt = account.commission * account.gross_pl
       nd = nt / 100
       net = account.gross_pl - nd
       account.update!(net_pl: net)
     end

  end
  desc "Trade History"
  task :trade => :environment do
  @accounts = Account.all.includes(:trades)
    @accounts.each do |account|
        account.trades.each do |trade|

    a = account.capital
      b = account.guranted
      c = account.gross_pl
      d = account.net_pl
      e = account.roi
    f = account.ctp
      g = account.closing_b
      h = account.opening_b
      i = account.profit_bf
      j = account.commission
 puts a, b, c


        trade.create(capital: a, guranted: b, gross_pl: c, net_pl: d, roi: e, ctp: f, closing_b: g, opening_b: h, profit_bf: i, commission: j)

      end
    end


  end

end
