.class public Lo/aay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒴ$ˊ;
.implements Lo/ᒴ$ˋ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aay$if;
    }
.end annotation


# instance fields
.field private bvh:Lo/ᒴ;

.field private bvi:Lcom/google/android/gms/location/LocationRequest;

.field private bvj:Lcom/google/android/gms/location/LocationSettingsRequest;

.field private bvk:Lo/aay$if;

.field private bvl:Lo/ay;

.field private bvm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/aay$if;Lo/ay;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lo/aay;->bvk:Lo/aay$if;

    .line 58
    iput-object p3, p0, Lo/aay;->bvl:Lo/ay;

    .line 60
    new-instance v0, Lo/ᒴ$if;

    invoke-direct {v0, p1}, Lo/ᒴ$if;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lo/ᒴ$if;->ˎ(Lo/ᒴ$ˊ;)Lo/ᒴ$if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/ᒴ$if;->ˎ(Lo/ᒴ$ˋ;)Lo/ᒴ$if;

    move-result-object v0

    sget-object v1, Lo/az;->GJ:Lo/ᒰ;

    invoke-virtual {v0, v1}, Lo/ᒴ$if;->ˊ(Lo/ᒰ;)Lo/ᒴ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᒴ$if;->চ()Lo/ᒴ;

    move-result-object v0

    iput-object v0, p0, Lo/aay;->bvh:Lo/ᒴ;

    .line 66
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->ۥ(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->ᐠ(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->ʹ(F)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->ﯧ(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lo/aay;->bvi:Lcom/google/android/gms/location/LocationRequest;

    .line 73
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$if;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$if;-><init>()V

    iget-object v1, p0, Lo/aay;->bvi:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$if;->ˋ(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$if;->Λ()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    iput-object v0, p0, Lo/aay;->bvj:Lcom/google/android/gms/location/LocationSettingsRequest;

    .line 76
    return-void
.end method

.method private vP()V
    .locals 4

    .line 129
    sget-object v0, Lo/az;->Ht:Lo/bc;

    iget-object v1, p0, Lo/aay;->bvh:Lo/ᒴ;

    iget-object v2, p0, Lo/aay;->bvj:Lcom/google/android/gms/location/LocationSettingsRequest;

    invoke-interface {v0, v1, v2}, Lo/bc;->ˊ(Lo/ᒴ;Lcom/google/android/gms/location/LocationSettingsRequest;)Lo/ᒵ;

    move-result-object v3

    .line 132
    new-instance v0, Lo/aaz;

    invoke-direct {v0, p0}, Lo/aaz;-><init>(Lo/aay;)V

    invoke-interface {v3, v0}, Lo/ᒵ;->ˊ(Lo/ᓙ;)V

    .line 146
    return-void
.end method

.method static synthetic ˊ(Lo/aay;)Lo/aay$if;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/aay;->bvk:Lo/aay$if;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lo/aay;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lo/aay;->bvh:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->connect()V

    .line 82
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lo/aay;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lo/aay;->bvh:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->disconnect()V

    .line 88
    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lo/aay;->bvh:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->isConnected()Z

    move-result v0

    return v0
.end method

.method public vN()V
    .locals 4

    .line 103
    invoke-virtual {p0}, Lo/aay;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/aay;->bvm:Z

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lo/aay;->vP()V

    .line 109
    sget-object v0, Lo/az;->Hr:Lo/aw;

    iget-object v1, p0, Lo/aay;->bvh:Lo/ᒴ;

    iget-object v2, p0, Lo/aay;->bvi:Lcom/google/android/gms/location/LocationRequest;

    iget-object v3, p0, Lo/aay;->bvl:Lo/ay;

    invoke-interface {v0, v1, v2, v3}, Lo/aw;->ˊ(Lo/ᒴ;Lcom/google/android/gms/location/LocationRequest;Lo/ay;)Lo/ᒵ;

    .line 111
    return-void
.end method

.method public vO()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lo/aay;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/aay;->bvm:Z

    .line 116
    return-void

    .line 118
    :cond_0
    sget-object v0, Lo/az;->Hr:Lo/aw;

    iget-object v1, p0, Lo/aay;->bvh:Lo/ᒴ;

    iget-object v2, p0, Lo/aay;->bvl:Lo/ay;

    invoke-interface {v0, v1, v2}, Lo/aw;->ˊ(Lo/ᒴ;Lo/ay;)Lo/ᒵ;

    .line 119
    return-void
.end method

.method public ˊ(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lo/aay;->bvm:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lo/aay;->vN()V

    .line 126
    :cond_0
    return-void
.end method

.method public ˊ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 159
    const-string v0, "LocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectionFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐨ(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public ܙ(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lo/aay;->bvh:Lo/ᒴ;

    invoke-interface {v0}, Lo/ᒴ;->connect()V

    .line 153
    return-void
.end method
