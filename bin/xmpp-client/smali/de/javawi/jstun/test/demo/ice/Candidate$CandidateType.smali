.class public final enum Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
.super Ljava/lang/Enum;
.source "Candidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/javawi/jstun/test/demo/ice/Candidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CandidateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

.field public static final enum Local:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

.field public static final enum PeerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

.field public static final enum Relayed:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

.field public static final enum ServerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    const-string v1, "Local"

    invoke-direct {v0, v1, v2}, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Local:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    new-instance v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    const-string v1, "ServerReflexive"

    invoke-direct {v0, v1, v3}, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->ServerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    new-instance v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    const-string v1, "PeerReflexive"

    invoke-direct {v0, v1, v4}, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->PeerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    new-instance v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    const-string v1, "Relayed"

    invoke-direct {v0, v1, v5}, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Relayed:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    sget-object v1, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Local:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    aput-object v1, v0, v2

    sget-object v1, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->ServerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    aput-object v1, v0, v3

    sget-object v1, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->PeerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    aput-object v1, v0, v4

    sget-object v1, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Relayed:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    aput-object v1, v0, v5

    sput-object v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->ENUM$VALUES:[Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    return-object v0
.end method

.method public static values()[Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->ENUM$VALUES:[Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    array-length v1, v0

    new-array v2, v1, [Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
