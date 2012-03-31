.class public Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;
.super Ljava/lang/Object;
.source "AttributeTypeAndValuePair.java"


# instance fields
.field private final type:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "id"
    .parameter "object"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->value:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->type:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/jndi/internal/parser/AttributeTypeAndValuePair;->value:Ljava/lang/Object;

    return-object v0
.end method
