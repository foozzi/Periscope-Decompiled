.class Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/modes/CCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExposedByteArrayOutputStream"
.end annotation


# instance fields
.field final synthetic aOK:Lorg/spongycastle/crypto/modes/CCMBlockCipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/modes/CCMBlockCipher;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->aOK:Lorg/spongycastle/crypto/modes/CCMBlockCipher;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 450
    return-void
.end method


# virtual methods
.method public ke()[B
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->buf:[B

    return-object v0
.end method
