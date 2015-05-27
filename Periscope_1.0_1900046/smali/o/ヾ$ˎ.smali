.class public final Lo/ヾ$ˎ;
.super Lo/ﭒ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ヾ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "\u02ce"
.end annotation


# instance fields
.field private Eo:Lo/ヾ;


# direct methods
.method public constructor <init>(Lo/ヾ;)V
    .locals 0

    invoke-direct {p0}, Lo/ﭒ$if;-><init>()V

    iput-object p1, p0, Lo/ヾ$ˎ;->Eo:Lo/ヾ;

    return-void
.end method

.method private ẓ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ヾ$ˎ;->Eo:Lo/ヾ;

    return-void
.end method


# virtual methods
.method public ˋ(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/ヾ$ˎ;->Eo:Lo/ヾ;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo/ヾ$ˎ;->Eo:Lo/ヾ;

    invoke-virtual {v0, p1, p2, p3}, Lo/ヾ;->ˊ(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lo/ヾ$ˎ;->ẓ()V

    return-void
.end method

.method public ˎ(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lo/ヾ$ˎ;->Eo:Lo/ヾ;

    const-string v1, "onAccountValidationComplete can be called only once per call to validateAccount"

    invoke-static {v0, v1}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lo/ヾ$ˎ;->Eo:Lo/ヾ;

    invoke-virtual {v0, p1, p2}, Lo/ヾ;->ˋ(ILandroid/os/Bundle;)V

    invoke-direct {p0}, Lo/ヾ$ˎ;->ẓ()V

    return-void
.end method
