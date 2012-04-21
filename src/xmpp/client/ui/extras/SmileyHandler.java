package xmpp.client.ui.extras;

import java.util.HashMap;
import java.util.Set;

import xmpp.client.R;
import android.content.Context;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ImageSpan;

public final class SmileyHandler {
	private static final HashMap<String, Integer> emoticons = new HashMap<String, Integer>();
	static {
		emoticons.put(":(", R.drawable.emo_im_sad);
		emoticons.put(":-(", R.drawable.emo_im_sad);
		emoticons.put(":D", R.drawable.emo_im_laughing);
		emoticons.put(":-D", R.drawable.emo_im_laughing);
		emoticons.put(":P", R.drawable.emo_im_tongue_sticking_out);
		emoticons.put(":-P", R.drawable.emo_im_tongue_sticking_out);
		emoticons.put(":p", R.drawable.emo_im_tongue_sticking_out);
		emoticons.put(":-p", R.drawable.emo_im_tongue_sticking_out);
		emoticons.put(";)", R.drawable.emo_im_winking);
		emoticons.put(";-)", R.drawable.emo_im_winking);
		emoticons.put("o.O", R.drawable.emo_im_wtf);
		emoticons.put("O.o", R.drawable.emo_im_wtf);
		emoticons.put("o.o", R.drawable.emo_im_wtf);
		emoticons.put(":wtf:", R.drawable.emo_im_wtf);
		emoticons.put(":/", R.drawable.emo_im_undecided);
		emoticons.put(":-/", R.drawable.emo_im_undecided);
		emoticons.put(":\\", R.drawable.emo_im_undecided);
		emoticons.put(":-\\", R.drawable.emo_im_undecided);
		emoticons.put(":o", R.drawable.emo_im_surprised);
		emoticons.put(":-o", R.drawable.emo_im_surprised);
		emoticons.put(":O", R.drawable.emo_im_surprised);
		emoticons.put(":-O", R.drawable.emo_im_surprised);
		emoticons.put("0:-)", R.drawable.emo_im_angel);
		emoticons.put("0:)", R.drawable.emo_im_angel);
		emoticons.put("O:-)", R.drawable.emo_im_angel);
		emoticons.put("O:)", R.drawable.emo_im_angel);
		emoticons.put(":)", R.drawable.emo_im_happy);
		emoticons.put("=)", R.drawable.emo_im_happy);
		emoticons.put(":-)", R.drawable.emo_im_happy);
		emoticons.put("B)", R.drawable.emo_im_cool);
		emoticons.put("B-)", R.drawable.emo_im_cool);
		emoticons.put(":cool:", R.drawable.emo_im_cool);
		emoticons.put(":'(", R.drawable.emo_im_crying);
		emoticons.put(";(", R.drawable.emo_im_crying);
		emoticons.put(":!", R.drawable.emo_im_foot_in_mouth);
		emoticons.put(":-!", R.drawable.emo_im_foot_in_mouth);
		emoticons.put("$)", R.drawable.emo_im_money_mouth);
		emoticons.put("$-)", R.drawable.emo_im_money_mouth);
		emoticons.put(":@", R.drawable.emo_im_yelling);
		emoticons.put(":-@", R.drawable.emo_im_yelling);
		emoticons.put(":#", R.drawable.emo_im_lips_are_sealed);
		emoticons.put(":-#", R.drawable.emo_im_lips_are_sealed);
		emoticons.put(":*", R.drawable.emo_im_kissing);
		emoticons.put(":-*", R.drawable.emo_im_kissing);
	}

	public static Spannable getSmiledText(String text, Context context) {
		final SpannableStringBuilder builder = new SpannableStringBuilder(text);
		int index;
		for (index = 0; index < builder.length(); index++) {
			for (final String smiley : getSmileyStrings()) {
				final int length = smiley.length();
				if (index + length > builder.length()) {
					continue;
				}
				if (builder.subSequence(index, index + length).toString()
						.equals(smiley)) {
					builder.setSpan(new ImageSpan(context,
							getSmileyDrawable(smiley)), index, index + length,
							Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
					index += length - 1;
					break;
				}
			}
		}
		return builder;
	}

	public static int getSmileyDrawable(String smiley) {
		return emoticons.get(smiley);
	}

	public static String[] getSmileyStrings() {
		final Set<String> set = emoticons.keySet();
		return set.toArray(new String[set.size()]);
	}
}
