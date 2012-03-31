.class Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;
.super Ljava/lang/Object;
.source "VCard.java"

# interfaces
.implements Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->appendTag(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

.field private final synthetic val$tagText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->val$tagText:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagContent()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->this$1:Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    #getter for: Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->sb:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->access$2(Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter$6;->val$tagText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    return-void
.end method
