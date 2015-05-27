.class public Lorg/spongycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private biJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    const-string v0, "SHA256"

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceCCA2ParameterSpec;->biJ:Ljava/lang/String;

    .line 53
    return-void
.end method
