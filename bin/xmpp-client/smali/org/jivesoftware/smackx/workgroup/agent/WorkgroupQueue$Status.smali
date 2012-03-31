.class public Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
.super Ljava/lang/Object;
.source "WorkgroupQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation


# static fields
.field public static final ACTIVE:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

.field public static final CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

.field public static final OPEN:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    const-string v1, "open"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->OPEN:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 61
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    const-string v1, "active"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->ACTIVE:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 66
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->value:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 82
    sget-object v1, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->OPEN:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->OPEN:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    goto :goto_0

    .line 84
    :cond_2
    sget-object v1, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->ACTIVE:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->ACTIVE:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    goto :goto_0

    .line 86
    :cond_3
    sget-object v1, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->value:Ljava/lang/String;

    return-object v0
.end method
