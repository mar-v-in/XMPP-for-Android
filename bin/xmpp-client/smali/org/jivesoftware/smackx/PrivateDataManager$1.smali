.class Lorg/jivesoftware/smackx/PrivateDataManager$1;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "PrivateDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/PrivateDataManager;->getPrivateData(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/PrivateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/PrivateDataManager;

.field private final synthetic val$elementName:Ljava/lang/String;

.field private final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/PrivateDataManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/PrivateDataManager$1;->this$0:Lorg/jivesoftware/smackx/PrivateDataManager;

    iput-object p2, p0, Lorg/jivesoftware/smackx/PrivateDataManager$1;->val$elementName:Ljava/lang/String;

    iput-object p3, p0, Lorg/jivesoftware/smackx/PrivateDataManager$1;->val$namespace:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<query xmlns=\"jabber:iq:private\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/PrivateDataManager$1;->val$elementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    iget-object v2, p0, Lorg/jivesoftware/smackx/PrivateDataManager$1;->val$namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
