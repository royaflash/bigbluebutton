package org.bigbluebutton.air.main.commands {
	
	import org.bigbluebutton.air.main.models.IUserSession;
	import org.bigbluebutton.air.user.models.EmojiStatus;
	import org.bigbluebutton.air.user.services.IUsersService;
	
	import robotlegs.bender.bundles.mvcs.Command;
	
	public class EmojiCommand extends Command {
		
		[Inject]
		public var userService:IUsersService;
		
		[Inject]
		public var userId:String;
		
		[Inject]
		public var status:String;
		
		override public function execute():void {
			trace("EmojiCommand.execute() - change emoji status");
			if (EmojiStatus.STATUS_ARRAY.indexOf(status) != -1) {
				userService.emojiStatus(userId, status);
			} else {
				trace("Emoji status [" + status + "] not supported");
			}
		}
	}
}
