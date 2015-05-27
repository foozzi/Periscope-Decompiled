.class Lo/ais;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bGN:Lo/aiq;


# direct methods
.method constructor <init>(Lo/aiq;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lo/ais;->bGN:Lo/aiq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 137
    sget-object v0, Lo/vi$if;->blR:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 138
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lo/ais;->bGN:Lo/aiq;

    const-class v1, Lo/adq;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const-string v0, "e_title"

    iget-object v1, p0, Lo/ais;->bGN:Lo/aiq;

    const v2, 0x7f0600cd

    invoke-virtual {v1, v2}, Lo/aiq;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v0, "e_url"

    iget-object v1, p0, Lo/ais;->bGN:Lo/aiq;

    const v2, 0x7f0600ce

    invoke-virtual {v1, v2}, Lo/aiq;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lo/ais;->bGN:Lo/aiq;

    iget-object v1, p0, Lo/ais;->bGN:Lo/aiq;

    const v2, 0x7f04000d

    const v3, 0x7f04000b

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lo/aiq;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 144
    return-void
.end method
