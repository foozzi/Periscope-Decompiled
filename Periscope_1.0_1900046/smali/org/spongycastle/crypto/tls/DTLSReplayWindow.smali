.class Lorg/spongycastle/crypto/tls/DTLSReplayWindow;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aTv:J

.field private aTw:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->aTv:J

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->aTw:J

    return-void
.end method
