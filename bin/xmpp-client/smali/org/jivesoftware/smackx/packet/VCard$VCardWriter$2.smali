.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;
.super Ljava/lang/Object;
.source "VCard.java"

# interfaces
.implements Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmail(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

.field private final synthetic val$email:Ljava/lang/String;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->val$email:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagContent()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->val$type:Ljava/lang/String;

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$0(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    const-string v1, "INTERNET"

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$0(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    const-string v1, "PREF"

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$0(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    const-string v1, "USERID"

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$2;->val$email:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$1(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
