.class public Lorg/spongycastle/jcajce/provider/symmetric/Camellia$AlgParams;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 189
    const-string v0, "Camellia IV"

    return-object v0
.end method