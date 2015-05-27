.class public Lo/Ꭲ;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ꭲ$1;,
        Lo/Ꭲ$if;
    }
.end annotation


# instance fields
.field private final lL:Lo/ԇ;

.field private final lM:Lo/Ꮠ;

.field private lN:Lo/ᕻ;

.field private final lO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<Lo/\u13a2;>;"
        }
    .end annotation
.end field

.field private lP:Lo/Ꭲ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    new-instance v0, Lo/ԇ;

    invoke-direct {v0}, Lo/ԇ;-><init>()V

    invoke-direct {p0, v0}, Lo/Ꭲ;-><init>(Lo/ԇ;)V

    .line 35
    return-void
.end method

.method constructor <init>(Lo/ԇ;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Lo/Ꭲ$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/Ꭲ$if;-><init>(Lo/Ꭲ;Lo/Ꭲ$1;)V

    iput-object v0, p0, Lo/Ꭲ;->lM:Lo/Ꮠ;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/Ꭲ;->lO:Ljava/util/HashSet;

    .line 40
    iput-object p1, p0, Lo/Ꭲ;->lL:Lo/ԇ;

    .line 41
    return-void
.end method

.method private ˊ(Lo/Ꭲ;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/Ꭲ;->lO:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private ˋ(Lo/Ꭲ;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/Ꭲ;->lO:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    invoke-static {}, Lo/Ꭸ;->ร()Lo/Ꭸ;

    move-result-object v0

    invoke-virtual {p0}, Lo/Ꭲ;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Ꭸ;->ˊ(Landroid/app/FragmentManager;)Lo/Ꭲ;

    move-result-object v0

    iput-object v0, p0, Lo/Ꭲ;->lP:Lo/Ꭲ;

    .line 119
    iget-object v0, p0, Lo/Ꭲ;->lP:Lo/Ꭲ;

    if-eq v0, p0, :cond_0

    .line 120
    iget-object v0, p0, Lo/Ꭲ;->lP:Lo/Ꭲ;

    invoke-direct {v0, p0}, Lo/Ꭲ;->ˊ(Lo/Ꭲ;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 148
    iget-object v0, p0, Lo/Ꭲ;->lL:Lo/ԇ;

    invoke-virtual {v0}, Lo/ԇ;->onDestroy()V

    .line 149
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 127
    iget-object v0, p0, Lo/Ꭲ;->lP:Lo/Ꭲ;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lo/Ꭲ;->lP:Lo/Ꭲ;

    invoke-direct {v0, p0}, Lo/Ꭲ;->ˋ(Lo/Ꭲ;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Ꭲ;->lP:Lo/Ꭲ;

    .line 131
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/Ꭲ;->lN:Lo/ᕻ;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lo/Ꭲ;->lN:Lo/ᕻ;

    invoke-virtual {v0}, Lo/ᕻ;->onLowMemory()V

    .line 167
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 136
    iget-object v0, p0, Lo/Ꭲ;->lL:Lo/ԇ;

    invoke-virtual {v0}, Lo/ԇ;->onStart()V

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 142
    iget-object v0, p0, Lo/Ꭲ;->lL:Lo/ԇ;

    invoke-virtual {v0}, Lo/ԇ;->onStop()V

    .line 143
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 155
    iget-object v0, p0, Lo/Ꭲ;->lN:Lo/ᕻ;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lo/Ꭲ;->lN:Lo/ᕻ;

    invoke-virtual {v0, p1}, Lo/ᕻ;->onTrimMemory(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public ʼ(Lo/ᕻ;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/Ꭲ;->lN:Lo/ᕻ;

    .line 50
    return-void
.end method

.method ں()Lo/ԇ;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/Ꭲ;->lL:Lo/ԇ;

    return-object v0
.end method

.method public ܥ()Lo/ᕻ;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/Ꭲ;->lN:Lo/ᕻ;

    return-object v0
.end method

.method public ধ()Lo/Ꮠ;
    .locals 1

    .line 64
    iget-object v0, p0, Lo/Ꭲ;->lM:Lo/Ꮠ;

    return-object v0
.end method
