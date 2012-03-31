.class public final Lxmpp/client/ui/extras/SmileyHandler;
.super Ljava/lang/Object;
.source "SmileyHandler.java"


# static fields
.field private static final emoticons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7f020001

    const v6, 0x7f020011

    const v5, 0x7f020010

    const v4, 0x7f02000f

    const/high16 v3, 0x7f02

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    .line 16
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":("

    const v2, 0x7f02000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-("

    const v2, 0x7f02000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":D"

    const v2, 0x7f020008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-D"

    const v2, 0x7f020008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":P"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-P"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":p"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-p"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ";)"

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ";-)"

    const v2, 0x7f020012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "o.O"

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "O.o"

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":wtf:"

    const v2, 0x7f020013

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":/"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-/"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":\\"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-\\"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":o"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-o"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":O"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-O"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "0:-)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "0:)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "O:-)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "O:)"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":)"

    const v2, 0x7f020005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "=)"

    const v2, 0x7f020005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-)"

    const v2, 0x7f020005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "B)"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "B-)"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":cool:"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":\'("

    const v2, 0x7f020002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ";("

    const v2, 0x7f020002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":!"

    const v2, 0x7f020004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-!"

    const v2, 0x7f020004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "$)"

    const v2, 0x7f02000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, "$-)"

    const v2, 0x7f02000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":@"

    const v2, 0x7f020014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-@"

    const v2, 0x7f020014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":#"

    const v2, 0x7f020009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-#"

    const v2, 0x7f020009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":*"

    const v2, 0x7f020007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    const-string v1, ":-*"

    const v2, 0x7f020007

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmiledText(Ljava/lang/String;Landroid/content/Context;)Landroid/text/Spannable;
    .locals 9
    .parameter "text"
    .parameter "context"

    .prologue
    .line 62
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 80
    return-object v0

    .line 65
    :cond_0
    invoke-static {}, Lxmpp/client/ui/extras/SmileyHandler;->getSmileyStrings()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v6, :cond_1

    .line 64
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    aget-object v3, v5, v4

    .line 66
    .local v3, smiley:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 67
    .local v2, length:I
    add-int v7, v1, v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-le v7, v8, :cond_3

    .line 65
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 70
    :cond_3
    add-int v7, v1, v2

    invoke-virtual {v0, v1, v7}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    new-instance v4, Landroid/text/style/ImageSpan;

    .line 73
    invoke-static {v3}, Lxmpp/client/ui/extras/SmileyHandler;->getSmileyDrawable(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, p1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    add-int v5, v1, v2

    .line 74
    const/16 v6, 0x21

    .line 72
    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 75
    add-int/lit8 v4, v2, -0x1

    add-int/2addr v1, v4

    .line 76
    goto :goto_2
.end method

.method public static getSmileyDrawable(Ljava/lang/String;)I
    .locals 1
    .parameter "smiley"

    .prologue
    .line 84
    sget-object v0, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSmileyStrings()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v1, Lxmpp/client/ui/extras/SmileyHandler;->emoticons:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 89
    .local v0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
