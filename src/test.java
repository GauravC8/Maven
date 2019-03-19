import java.util.*;

public class test {

	public static void main(String[] args) 	{
		int a[] = {4,5,8,6,7,5,2,3};
		int b[] = new int[a.length];
		b=Arrays.copyOf(a,a.length);
		Arrays.sort(a);
		/*for(int i=0;i<a.length;i++)
		{
			a[i]=i;
		}*/
		int c[] =new int[a.length];
		int count=0;
		for(int j=0;j<a.length;j++)
		{
			for(int k=0;k<a.length;k++)
				if(b[j]==a[k])
					{c[0]=count;
					count++;}
		}
		for(int i=0;i<a.length;i++)
		{
			System.out.println(c[i]);
		}
	}
}
