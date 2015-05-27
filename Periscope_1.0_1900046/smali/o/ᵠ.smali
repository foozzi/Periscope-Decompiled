.class public final Lo/ᵠ;
.super Lo/ᴰ;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    const-string v0, "image_manager_disk_cache"

    const/high16 v1, 0xfa00000

    invoke-direct {p0, p1, v0, v1}, Lo/ᵠ;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 22
    new-instance v0, Lo/ᵩ;

    invoke-direct {v0, p1, p2}, Lo/ᵩ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lo/ᴰ;-><init>(Lo/ᴰ$if;I)V

    .line 35
    return-void
.end method
