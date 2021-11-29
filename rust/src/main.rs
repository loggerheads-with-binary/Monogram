extern crate subprocess;

fn main(){
		
		let args: Vec<String> = std::env::args().collect();
		
		//std::mem::drop(args);
		
		
		if args.len() == 1 {
			subprocess::Exec::cmd("cmd.exe").arg("/k").arg(args[1].clone()).join().expect("Shell Call Failed");
		}
		
		else {
				
			subprocess::Exec::cmd("cmd.exe").arg("/k").arg(args[1].clone()).args(&args[2..]).join().expect("Shell Call Failed");
		}
		
}