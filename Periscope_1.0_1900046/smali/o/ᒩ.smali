.class public Lo/ᒩ;
.super Landroid/support/v4/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒩ$1;,
        Lo/ᒩ$if;
    }
.end annotation


# instance fields
.field private final lL:Lo/ԇ;

.field private final lM:Lo/Ꮠ;

.field private lN:Lo/ᕻ;

.field private final lO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<Lo/\u14a9;>;"
        }
    .end annotation
.end field

.field private lY:Lo/ᒩ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    new-instance v0, Lo/ԇ;

    invoke-direct {v0}, Lo/ԇ;-><init>()V

    invoke-direct {p0, v0}, Lo/ᒩ;-><init>(Lo/ԇ;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lo/ԇ;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lo/ᒩ$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ᒩ$if;-><init>(Lo/ᒩ;Lo/ᒩ$1;)V

    iput-object v0, p0, Lo/ᒩ;->lM:Lo/Ꮠ;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/ᒩ;->lO:Ljava/util/HashSet;

    .line 38
    iput-object p1, p0, Lo/ᒩ;->lL:Lo/ԇ;

    .line 39
    return-void
.end method

.method private ˊ(Lo/ᒩ;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lo/ᒩ;->lO:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method private ˋ(Lo/ᒩ;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/ᒩ;->lO:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    invoke-static {}, Lo/Ꭸ;->ร()Lo/Ꭸ;

    move-result-object v0

    invoke-virtual {p0}, Lo/ᒩ;->getActivity()Lo/ι;

    move-result-object v1

    invoke-virtual {v1}, Lo/ι;->getSupportFragmentManager()Lo/ˈ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Ꭸ;->ˊ(Lo/ˈ;)Lo/ᒩ;

    move-result-object v0

    iput-object v0, p0, Lo/ᒩ;->lY:Lo/ᒩ;

    .line 118
    iget-object v0, p0, Lo/ᒩ;->lY:Lo/ᒩ;

    if-eq v0, p0, :cond_0

    .line 119
    iget-object v0, p0, Lo/ᒩ;->lY:Lo/ᒩ;

    invoke-direct {v0, p0}, Lo/ᒩ;->ˊ(Lo/ᒩ;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 147
    iget-object v0, p0, Lo/ᒩ;->lL:Lo/ԇ;

    invoke-virtual {v0}, Lo/ԇ;->onDestroy()V

    .line 148
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 126
    iget-object v0, p0, Lo/ᒩ;->lY:Lo/ᒩ;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lo/ᒩ;->lY:Lo/ᒩ;

    invoke-direct {v0, p0}, Lo/ᒩ;->ˋ(Lo/ᒩ;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒩ;->lY:Lo/ᒩ;

    .line 130
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 155
    iget-object v0, p0, Lo/ᒩ;->lN:Lo/ᕻ;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lo/ᒩ;->lN:Lo/ᕻ;

    invoke-virtual {v0}, Lo/ᕻ;->onLowMemory()V

    .line 158
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 135
    iget-object v0, p0, Lo/ᒩ;->lL:Lo/ԇ;

    invoke-virtual {v0}, Lo/ԇ;->onStart()V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 141
    iget-object v0, p0, Lo/ᒩ;->lL:Lo/ԇ;

    invoke-virtual {v0}, Lo/ԇ;->onStop()V

    .line 142
    return-void
.end method

.method public ʼ(Lo/ᕻ;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lo/ᒩ;->lN:Lo/ᕻ;

    .line 48
    return-void
.end method

.method ں()Lo/ԇ;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/ᒩ;->lL:Lo/ԇ;

    return-object v0
.end method

.method public ܥ()Lo/ᕻ;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/ᒩ;->lN:Lo/ᕻ;

    return-object v0
.end method

.method public ধ()Lo/Ꮠ;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/ᒩ;->lM:Lo/Ꮠ;

    return-object v0
.end method
