.class public final Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/SessionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aUE:[B

.field private aUF:Lorg/spongycastle/crypto/tls/Certificate;

.field private aUu:I

.field private aUv:S

.field private aUy:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->aUu:I

    .line 15
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->aUv:S

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->aUy:[B

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->aUF:Lorg/spongycastle/crypto/tls/Certificate;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters$Builder;->aUE:[B

    .line 22
    return-void
.end method
