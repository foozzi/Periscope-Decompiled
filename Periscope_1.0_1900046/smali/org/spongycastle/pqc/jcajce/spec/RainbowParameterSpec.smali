.class public Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static final bie:[I


# instance fields
.field private bhZ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->bie:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0xc
        0x11
        0x16
        0x21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->bie:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->bhZ:[I

    .line 47
    return-void
.end method


# virtual methods
.method public qC()[I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->bhZ:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    return-object v0
.end method
