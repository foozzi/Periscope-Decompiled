.class Lo/q;
.super Lo/p$if;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FZ:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic Ga:Lo/ay;

.field final synthetic Gb:Lo/p;


# direct methods
.method constructor <init>(Lo/p;Lo/ᒴ;Lcom/google/android/gms/location/LocationRequest;Lo/ay;)V
    .locals 0

    iput-object p1, p0, Lo/q;->Gb:Lo/p;

    iput-object p3, p0, Lo/q;->FZ:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lo/q;->Ga:Lo/ay;

    invoke-direct {p0, p2}, Lo/p$if;-><init>(Lo/ᒴ;)V

    return-void
.end method


# virtual methods
.method protected ˊ(Lo/x;)V
    .locals 3

    iget-object v0, p0, Lo/q;->FZ:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lo/q;->Ga:Lo/ay;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lo/x;->ˊ(Lcom/google/android/gms/location/LocationRequest;Lo/ay;Landroid/os/Looper;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Cu:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lo/q;->ˊ(Lo/ᒹ;)V

    return-void
.end method

.method protected synthetic ˋ(Lo/ᒰ$ˊ;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lo/x;

    invoke-virtual {p0, v0}, Lo/q;->ˊ(Lo/x;)V

    return-void
.end method
