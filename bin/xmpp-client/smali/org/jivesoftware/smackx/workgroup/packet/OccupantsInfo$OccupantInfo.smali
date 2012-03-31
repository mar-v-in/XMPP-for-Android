.class public Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;
.super Ljava/lang/Object;
.source "OccupantsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OccupantInfo"
.end annotation


# instance fields
.field private final jid:Ljava/lang/String;

.field private final joined:Ljava/util/Date;

.field private final nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "jid"
    .parameter "nickname"
    .parameter "joined"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->jid:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->nickname:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->joined:Ljava/util/Date;

    .line 51
    return-void
.end method


# virtual methods
.method public getJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getJoined()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->joined:Ljava/util/Date;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OccupantsInfo$OccupantInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method
