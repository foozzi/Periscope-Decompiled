.class Lo/n;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ab;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/ab<Lo/u;>;"
    }
.end annotation


# instance fields
.field final synthetic FY:Lo/m;


# direct methods
.method constructor <init>(Lo/m;)V
    .locals 0

    iput-object p1, p0, Lo/n;->FY:Lo/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ᴘ()V
    .locals 1

    iget-object v0, p0, Lo/n;->FY:Lo/m;

    invoke-static {v0}, Lo/m;->ˊ(Lo/m;)V

    return-void
.end method

.method public synthetic ᴝ()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lo/n;->Ｉ()Lo/u;

    move-result-object v0

    return-object v0
.end method

.method public Ｉ()Lo/u;
    .locals 1

    iget-object v0, p0, Lo/n;->FY:Lo/m;

    invoke-virtual {v0}, Lo/m;->ᴝ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/u;

    return-object v0
.end method
