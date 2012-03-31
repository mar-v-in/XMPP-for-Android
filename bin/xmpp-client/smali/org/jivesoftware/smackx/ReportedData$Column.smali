.class public Lorg/jivesoftware/smackx/ReportedData$Column;
.super Ljava/lang/Object;
.source "ReportedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ReportedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final variable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "label"
    .parameter "variable"
    .parameter "type"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/jivesoftware/smackx/ReportedData$Column;->label:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lorg/jivesoftware/smackx/ReportedData$Column;->variable:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lorg/jivesoftware/smackx/ReportedData$Column;->type:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smackx/ReportedData$Column;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smackx/ReportedData$Column;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVariable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jivesoftware/smackx/ReportedData$Column;->variable:Ljava/lang/String;

    return-object v0
.end method
