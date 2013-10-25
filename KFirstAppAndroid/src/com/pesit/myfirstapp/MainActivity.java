package com.pesit.myfirstapp;

import android.os.Bundle;

import android.app.Activity;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Log.i("hi","hello");
		Button b=(Button)findViewById(R.id.button1);
		b.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				Toast.makeText(MainActivity.this, "Clicked", Toast.LENGTH_LONG).show();
				
			}
		});
	}

	/*public void display(View v)
	{
		Toast.makeText(MainActivity.this, "Clicked", Toast.LENGTH_LONG).show();
	}*/

}
