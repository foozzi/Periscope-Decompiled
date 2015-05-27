.class public Lo/m;
.super Lo/ヾ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u30fe<Lo/u;>;"
    }
.end annotation


# instance fields
.field protected final FV:Lo/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ab<Lo/u;>;"
        }
    .end annotation
.end field

.field private final FX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/ᒴ$ˊ;Lo/ᒴ$ˋ;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    const/16 v3, 0x17

    invoke-direct/range {v0 .. v5}, Lo/ヾ;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/ᒴ$ˊ;Lo/ᒴ$ˋ;)V

    new-instance v0, Lo/n;

    invoke-direct {v0, p0}, Lo/n;-><init>(Lo/m;)V

    iput-object v0, p0, Lo/m;->FV:Lo/ab;

    iput-object p5, p0, Lo/m;->FX:Ljava/lang/String;

    return-void
.end method

.method static synthetic ˊ(Lo/m;)V
    .locals 0

    invoke-virtual {p0}, Lo/m;->ᴘ()V

    return-void
.end method


# virtual methods
.method protected ʽ(Landroid/os/IBinder;)Lo/u;
    .locals 1

    invoke-static {p1}, Lo/u$if;->ι(Landroid/os/IBinder;)Lo/u;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic ˋ(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lo/m;->ʽ(Landroid/os/IBinder;)Lo/u;

    move-result-object v0

    return-object v0
.end method

.method protected ᘣ()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected ᘦ()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected ᴉ()Landroid/os/Bundle;
    .locals 3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "client_name"

    iget-object v1, p0, Lo/m;->FX:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
