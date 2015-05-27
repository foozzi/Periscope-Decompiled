.class final Lo/x$if;
.super Lo/v$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "if"
.end annotation


# instance fields
.field private Gk:Lo/ᖧ$ˊ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u15a7$\u02ca<Lcom/google/android/gms/location/LocationSettingsResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ᖧ$ˊ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u15a7$\u02ca<Lcom/google/android/gms/location/LocationSettingsResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/v$if;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "listener can\'t be null."

    invoke-static {v0, v1}, Lo/ﺧ;->ˏ(ZLjava/lang/Object;)V

    iput-object p1, p0, Lo/x$if;->Gk:Lo/ᖧ$ˊ;

    return-void
.end method


# virtual methods
.method public ˊ(Lcom/google/android/gms/location/LocationSettingsResult;)V
    .locals 1

    iget-object v0, p0, Lo/x$if;->Gk:Lo/ᖧ$ˊ;

    invoke-interface {v0, p1}, Lo/ᖧ$ˊ;->ᐪ(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/x$if;->Gk:Lo/ᖧ$ˊ;

    return-void
.end method
