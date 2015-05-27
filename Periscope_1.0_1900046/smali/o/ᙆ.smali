.class Lo/ᙆ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ꭻ:Lo/ᒃ;


# direct methods
.method constructor <init>(Lo/ᒃ;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lo/ᙆ;->Ꭻ:Lo/ᒃ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lo/ᙆ;->Ꭻ:Lo/ᒃ;

    invoke-virtual {v0}, Lo/ᒃ;->invalidateSelf()V

    .line 384
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 388
    iget-object v0, p0, Lo/ᙆ;->Ꭻ:Lo/ᒃ;

    invoke-virtual {v0, p2, p3, p4}, Lo/ᒃ;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 389
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lo/ᙆ;->Ꭻ:Lo/ᒃ;

    invoke-virtual {v0, p2}, Lo/ᒃ;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method
