.class public Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;
.super Ljava/lang/Object;
.source "AgentStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final jid:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "jid"
    .parameter "type"
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->jid:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->type:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->name:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/AgentStatusRequest$Item;->type:Ljava/lang/String;

    return-object v0
.end method
