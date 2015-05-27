.class Lo/aaz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᓙ;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\u14d9<Lcom/google/android/gms/location/LocationSettingsResult;>;"
    }
.end annotation


# instance fields
.field final synthetic bvn:Lo/aay;


# direct methods
.method constructor <init>(Lo/aay;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lo/aaz;->bvn:Lo/aay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˋ(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResult;->হ()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 138
    :sswitch_0
    iget-object v0, p0, Lo/aaz;->bvn:Lo/aay;

    invoke-static {v0}, Lo/aay;->ˊ(Lo/aay;)Lo/aay$if;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/aay$if;->ˎ(Lcom/google/android/gms/location/LocationSettingsResult;)V

    .line 139
    .line 144
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic ˏ(Lo/ᒹ;)V
    .locals 1

    .line 132
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/location/LocationSettingsResult;

    invoke-virtual {p0, v0}, Lo/aaz;->ˋ(Lcom/google/android/gms/location/LocationSettingsResult;)V

    return-void
.end method
