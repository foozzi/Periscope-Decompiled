.class public Lorg/spongycastle/jce/spec/ECKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private bbU:Lorg/spongycastle/jce/spec/ECParameterSpec;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECKeySpec;->bbU:Lorg/spongycastle/jce/spec/ECParameterSpec;

    .line 17
    return-void
.end method


# virtual methods
.method public pd()Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECKeySpec;->bbU:Lorg/spongycastle/jce/spec/ECParameterSpec;

    return-object v0
.end method
