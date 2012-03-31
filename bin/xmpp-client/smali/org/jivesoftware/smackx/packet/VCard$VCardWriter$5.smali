.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;
.super Ljava/lang/Object;
.source "VCard.java"

# interfaces
.implements Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendPhones(Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

.field private final synthetic val$code:Ljava/lang/String;

.field private final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/util/Map$Entry;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->val$code:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagContent()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$0(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->val$code:Ljava/lang/String;

    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendEmptyTag(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$0(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/Object;)V

    .line 192
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    const-string v2, "NUMBER"

    .line 193
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$5;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    #calls: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$1(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method
