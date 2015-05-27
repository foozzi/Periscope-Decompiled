.class final Lcom/localytics/android/TestModeListView;
.super Lo/ʼ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/TestModeListView$CancelItemAdapter;,
        Lcom/localytics/android/TestModeListView$MenuItemAdapter;,
        Lcom/localytics/android/TestModeListView$MenuDialog;,
        Lcom/localytics/android/TestModeListView$TestModeDialog;
    }
.end annotation


# static fields
.field static final TEST_MODE_LIST_TAG:Ljava/lang/String; = "marketing_test_mode_list"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
        }
    .end annotation
.end field

.field private final mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lo/ʼ;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/TestModeListView;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/TestModeListView;)Landroid/widget/ListAdapter;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/localytics/android/TestModeListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/localytics/android/TestModeListView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/localytics/android/TestModeListView;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static newInstance()Lcom/localytics/android/TestModeListView;
    .locals 2

    .line 74
    new-instance v1, Lcom/localytics/android/TestModeListView;

    invoke-direct {v1}, Lcom/localytics/android/TestModeListView;-><init>()V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/localytics/android/TestModeListView;->setRetainInstance(Z)V

    .line 76
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 159
    const-string v0, "[TestModeListView]: onActivityCreated"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Lo/ʼ;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 124
    const-string v0, "[TestModeListView]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 125
    invoke-super {p0, p1}, Lo/ʼ;->onAttach(Landroid/app/Activity;)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 138
    const-string v0, "[TestModeListView]: onCreate"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 139
    invoke-super {p0, p1}, Lo/ʼ;->onCreate(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 145
    const-string v0, "[TestModeListView]: onCreateDialog"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 146
    new-instance v0, Lcom/localytics/android/TestModeListView$TestModeDialog;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView;->getActivity()Lo/ι;

    move-result-object v1

    const v2, 0x103000b

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/TestModeListView$TestModeDialog;-><init>(Lcom/localytics/android/TestModeListView;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    const-string v0, "[TestModeListView]: onCreateView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 83
    invoke-super {p0, p1, p2, p3}, Lo/ʼ;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 110
    const-string v0, "[TestModeListView]: onDestroy"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Lo/ʼ;->onDestroy()V

    .line 112
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 187
    const-string v0, "[TestModeListView]: onDestroyView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/localytics/android/TestModeListView;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 192
    :cond_0
    invoke-super {p0}, Lo/ʼ;->onDestroyView()V

    .line 193
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 131
    const-string v0, "[TestModeListView]: onDetach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Lo/ʼ;->onDetach()V

    .line 133
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 152
    const-string v0, "[TestModeListView]: onDismiss"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 153
    invoke-super {p0, p1}, Lo/ʼ;->onDismiss(Landroid/content/DialogInterface;)V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 103
    const-string v0, "[TestModeListView]: onPause"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 104
    invoke-super {p0}, Lo/ʼ;->onPause()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    const-string v0, "[TestModeListView]: onResume"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Lo/ʼ;->onResume()V

    .line 98
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 173
    const-string v0, "[TestModeListView]: onSaveInstanceState"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Lo/ʼ;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 166
    const-string v0, "[TestModeListView]: onStart"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 167
    invoke-super {p0}, Lo/ʼ;->onStart()V

    .line 168
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 180
    const-string v0, "[TestModeListView]: onStop"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 181
    invoke-super {p0}, Lo/ʼ;->onStop()V

    .line 182
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    const-string v0, "[TestModeListView]: onViewStateRestored"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1}, Lo/ʼ;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/localytics/android/TestModeListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 198
    return-void
.end method

.method public setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeListView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;)Lcom/localytics/android/TestModeListView;"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/localytics/android/TestModeListView;->mCallbacks:Ljava/util/Map;

    .line 203
    return-object p0
.end method

.method public show(Lo/ˈ;Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/localytics/android/TestModeListView;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    invoke-super {p0, p1, p2}, Lo/ʼ;->show(Lo/ˈ;Ljava/lang/String;)V

    .line 119
    return-void
.end method
