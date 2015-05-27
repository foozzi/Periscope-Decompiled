.class abstract Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ThreefishCipher"
.end annotation


# instance fields
.field protected final aMh:[J

.field protected final aMi:[J


# direct methods
.method protected constructor <init>([J[J)V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->aMi:[J

    .line 433
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->aMh:[J

    .line 434
    return-void
.end method


# virtual methods
.method abstract ˋ([J[J)V
.end method

.method abstract ˎ([J[J)V
.end method
