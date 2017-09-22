using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Numerics;

public partial class _Default : System.Web.UI.Page
{
    private List<int> _primes;
    private Random _random = new Random();

    public List<int> GetAllPrimes(int n)

    {

        var result = new List<int> { 2 };

        for (int i = 3; i <= n; i += 2)

            if (IsPrime(i))

                result.Add(i);

        return result;

    }

    public bool IsPrime(int n)

    {

        for (int i = 3; i * i <= n; i += 2)

        {

            if (n % i == 0)

                return false;

        }

        return true;

    }

    public int GCD(int a, int b)

    {
        while (a != 0 && b != 0)
        {
            if (a > b)

                a %= b;

            else

                b %= a;

        }



        if (a == 0)

            return b;

        else

            return a;

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGeneratePnQ_Click(object sender, EventArgs e)
    {
        int p, q;
        _primes = GetAllPrimes(1000);

        for (; ; )

        {

            p = _primes[_random.Next(_primes.Count)];

            q = _primes[_random.Next(_primes.Count)];

            if (p > 10 && q > 10)

                break;

        }

        txtP.Text = p.ToString();

        txtQ.Text = q.ToString();
    }

    protected void btnCalNPhiE_Click(object sender, EventArgs e)
    {
        int p = Convert.ToInt32(txtP.Text);

        int q = Convert.ToInt32(txtQ.Text);

        int n = (p * q);

        txtN.Text = n.ToString();

        int phi = (p - 1) * (q - 1);

        txtPHI.Text = phi.ToString();



        int e_ = 3;

        for (; ; )

        {

            int gcd = GCD(e_, phi);

            if (gcd == 1)

                break;

            e_++;

        }

        txtE.Text = e_.ToString();
    }

    protected void btnCalcD_Click(object sender, EventArgs e)
    {
        int phi = Convert.ToInt32(txtPHI.Text);

        int e_ = Convert.ToInt32(txtE.Text);

        int d = 5;

        for (; ; )

        {

            int product = e_ * d;

            if (product % phi == 1)

                break;

            d++;

        }

        txtD.Text = d.ToString();
    }

    protected void btnEncrypt_Click(object sender, EventArgs e)
    {
        // c = m^e mod n

        int m = Convert.ToInt32(txtM.Text);

        int e_ = Convert.ToInt32(txtE.Text);

        int n = Convert.ToInt32(txtN.Text);

        if(m >= n) { // 0 <= M < n
            lberror.Text = "ERROR: Message should be less than n";
            return;
        }

        lberror.Text = "";

        BigInteger result = BigInteger.Pow(m, e_);

        BigInteger c = result % (BigInteger)n;

        txtEncrypted.Text = c.ToString();
    }

    protected void btnDecrypt_Click(object sender, EventArgs e)
    {
        // m = c^d mod n

        int c = Convert.ToInt32(txtEncrypted.Text);

        int d = Convert.ToInt32(txtD.Text);

        int n = Convert.ToInt32(txtN.Text);



        BigInteger result = BigInteger.Pow(c, d);

        BigInteger m = result % (BigInteger)n;

        txtDecrypted.Text = m.ToString();
    }

    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtD.Text = "";
        txtDecrypted.Text = "";
        txtE.Text = "";
        txtEncrypted.Text = "";
        txtM.Text = "";
        txtN.Text = "";
        txtP.Text = "";
        txtPHI.Text = "";
        txtQ.Text = "";
        lberror.Text = "";
    }
}