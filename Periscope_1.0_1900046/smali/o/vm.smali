.class public Lo/vm;
.super Lo/xl;
.source ""


# instance fields
.field public Rp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "access_token"
    .end annotation
.end field

.field public bni:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "subscriber"
    .end annotation
.end field

.field public bnj:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "publisher"
    .end annotation
.end field

.field public bnk:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "auth_token"
    .end annotation
.end field

.field public bnl:I
    .annotation runtime Lo/go;
        value = "participant_index"
    .end annotation
.end field

.field public bnm:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "channel"
    .end annotation
.end field

.field public bnn:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "session"
    .end annotation
.end field

.field public bno:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "rtmp_url"
    .end annotation
.end field

.field public bnp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "replay_url"
    .end annotation
.end field

.field public bnq:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "hls_url"
    .end annotation
.end field

.field public bnr:Lo/xh;
    .annotation runtime Lo/go;
        value = "broadcast"
    .end annotation
.end field

.field public bns:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "signer_token"
    .end annotation
.end field

.field public bnt:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "signer_key"
    .end annotation
.end field

.field public bnu:Z
    .annotation runtime Lo/go;
        value = "should_log"
    .end annotation
.end field

.field public bnv:Ljava/lang/Boolean;
    .annotation runtime Lo/go;
        value = "should_verify_signature"
    .end annotation
.end field

.field public bnw:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "endpoint"
    .end annotation
.end field

.field public key:[B
    .annotation runtime Lo/go;
        value = "key"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lo/xl;-><init>()V

    return-void
.end method
