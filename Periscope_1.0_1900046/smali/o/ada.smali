.class public Lo/ada;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final Tk:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "profileImageURL"
    .end annotation
.end field

.field public final bns:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "signer_token"
    .end annotation
.end field

.field public final bpx:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "username"
    .end annotation
.end field

.field public final bpy:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "displayName"
    .end annotation
.end field

.field public final bpz:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "initials"
    .end annotation
.end field

.field public final bym:Ljava/lang/Integer;
    .annotation runtime Lo/go;
        value = "participant_index"
    .end annotation
.end field

.field public final byn:Ljava/lang/Integer;
    .annotation runtime Lo/go;
        value = "v"
    .end annotation
.end field

.field public final byo:Ljava/math/BigInteger;
    .annotation runtime Lo/go;
        value = "ntpForLiveFrame"
    .end annotation
.end field

.field public final byp:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "body"
    .end annotation
.end field

.field public final byq:Ljava/lang/Long;
    .annotation runtime Lo/go;
        value = "timestamp"
    .end annotation
.end field

.field public final byr:Ljava/lang/Double;
    .annotation runtime Lo/go;
        value = "timestampPlaybackOffset"
    .end annotation
.end field

.field public final bys:Ljava/lang/Double;
    .annotation runtime Lo/go;
        value = "lat"
    .end annotation
.end field

.field public final byt:Ljava/lang/Double;
    .annotation runtime Lo/go;
        value = "lng"
    .end annotation
.end field

.field public final byu:Ljava/lang/Integer;
    .annotation runtime Lo/go;
        value = "invited_count"
    .end annotation
.end field

.field public final byv:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "broadcasterBlockedMessageBody"
    .end annotation
.end field

.field public final byw:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "broadcasterBlockedRemoteID"
    .end annotation
.end field

.field public final byx:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "broadcasterBlockedUsername"
    .end annotation
.end field

.field public final mY:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "signature"
    .end annotation
.end field

.field public final nD:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "remoteID"
    .end annotation
.end field

.field public final oM:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "uuid"
    .end annotation
.end field

.field public final type:I
    .annotation runtime Lo/go;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/ant;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p2}, Lo/ant;->Cf()Lo/anu;

    move-result-object v0

    invoke-virtual {v0}, Lo/anu;->ordinal()I

    move-result v0

    iput v0, p0, Lo/ada;->type:I

    .line 75
    iput-object p1, p0, Lo/ada;->bns:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Lo/ant;->Ch()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->bym:Ljava/lang/Integer;

    .line 77
    invoke-virtual {p2}, Lo/ant;->Ce()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byn:Ljava/lang/Integer;

    .line 78
    invoke-virtual {p2}, Lo/ant;->at()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->oM:Ljava/lang/String;

    .line 79
    invoke-virtual {p2}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byo:Ljava/math/BigInteger;

    .line 80
    invoke-virtual {p2}, Lo/ant;->du()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byp:Ljava/lang/String;

    .line 81
    invoke-virtual {p2}, Lo/ant;->Cl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->bpx:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Lo/ant;->Cn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->Tk:Ljava/lang/String;

    .line 83
    invoke-virtual {p2}, Lo/ant;->Cm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->bpz:Ljava/lang/String;

    .line 84
    invoke-virtual {p2}, Lo/ant;->Cj()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byq:Ljava/lang/Long;

    .line 85
    invoke-virtual {p2}, Lo/ant;->Ck()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->mY:Ljava/lang/String;

    .line 86
    invoke-virtual {p2}, Lo/ant;->displayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->bpy:Ljava/lang/String;

    .line 87
    invoke-virtual {p2}, Lo/ant;->Cb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->nD:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Lo/ant;->Co()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byr:Ljava/lang/Double;

    .line 89
    invoke-virtual {p2}, Lo/ant;->Cp()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->bys:Ljava/lang/Double;

    .line 90
    invoke-virtual {p2}, Lo/ant;->Cq()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byt:Ljava/lang/Double;

    .line 91
    invoke-virtual {p2}, Lo/ant;->Cr()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byu:Ljava/lang/Integer;

    .line 92
    invoke-virtual {p2}, Lo/ant;->Cs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byv:Ljava/lang/String;

    .line 93
    invoke-virtual {p2}, Lo/ant;->Ct()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byw:Ljava/lang/String;

    .line 94
    invoke-virtual {p2}, Lo/ant;->Cu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ada;->byx:Ljava/lang/String;

    .line 95
    return-void
.end method
