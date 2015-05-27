.class public final Lcom/localytics/android/TestModeButton;
.super Lo/ʼ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/TestModeButton$TestModeDialog;
    }
.end annotation


# static fields
.field static final TEST_MODE_BUTTON_TAG:Ljava/lang/String; = "marketing_test_mode_button"


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;"
        }
    .end annotation
.end field

.field private final mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lo/ʼ;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/TestModeButton;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/TestModeButton;)Ljava/util/Map;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/localytics/android/TestModeButton;->mCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/TestModeButton;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/localytics/android/TestModeButton;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static newInstance()Lcom/localytics/android/TestModeButton;
    .locals 2

    .line 64
    new-instance v1, Lcom/localytics/android/TestModeButton;

    invoke-direct {v1}, Lcom/localytics/android/TestModeButton;-><init>()V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/localytics/android/TestModeButton;->setRetainInstance(Z)V

    .line 66
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 149
    const-string v0, "[TestModeButton]: onActivityCreated"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 150
    invoke-super {p0, p1}, Lo/ʼ;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 114
    const-string v0, "[TestModeButton]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 115
    invoke-super {p0, p1}, Lo/ʼ;->onAttach(Landroid/app/Activity;)V

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    const-string v0, "[TestModeButton]: onCreate"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 129
    invoke-super {p0, p1}, Lo/ʼ;->onCreate(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 135
    const-string v0, "[TestModeButton]: onCreateDialog"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 136
    new-instance v0, Lcom/localytics/android/TestModeButton$TestModeDialog;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton;->getActivity()Lo/ι;

    move-result-object v1

    const v2, 0x103000b

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/TestModeButton$TestModeDialog;-><init>(Lcom/localytics/android/TestModeButton;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    const-string v0, "[TestModeButton]: onCreateView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 73
    invoke-super {p0, p1, p2, p3}, Lo/ʼ;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 100
    const-string v0, "[TestModeButton]: onDestroy"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 101
    invoke-super {p0}, Lo/ʼ;->onDestroy()V

    .line 102
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 177
    const-string v0, "[TestModeButton]: onDestroyView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 182
    :cond_0
    invoke-super {p0}, Lo/ʼ;->onDestroyView()V

    .line 183
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 121
    const-string v0, "[TestModeButton]: onDetach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Lo/ʼ;->onDetach()V

    .line 123
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 142
    const-string v0, "[TestModeButton]: onDismiss"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 143
    invoke-super {p0, p1}, Lo/ʼ;->onDismiss(Landroid/content/DialogInterface;)V

    .line 144
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 93
    const-string v0, "[TestModeButton]: onPause"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 94
    invoke-super {p0}, Lo/ʼ;->onPause()V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 86
    const-string v0, "[TestModeButton]: onResume"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 87
    invoke-super {p0}, Lo/ʼ;->onResume()V

    .line 88
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 163
    const-string v0, "[TestModeButton]: onSaveInstanceState"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 164
    invoke-super {p0, p1}, Lo/ʼ;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 156
    const-string v0, "[TestModeButton]: onStart"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 157
    invoke-super {p0}, Lo/ʼ;->onStart()V

    .line 158
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 170
    const-string v0, "[TestModeButton]: onStop"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 171
    invoke-super {p0}, Lo/ʼ;->onStop()V

    .line 172
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    const-string v0, "[TestModeButton]: onViewStateRestored"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 80
    invoke-super {p0, p1}, Lo/ʼ;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method setCallbacks(Ljava/util/Map;)Lcom/localytics/android/TestModeButton;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/Integer;Lcom/localytics/android/MarketingCallable;>;)Lcom/localytics/android/TestModeButton;"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/localytics/android/TestModeButton;->mCallbacks:Ljava/util/Map;

    .line 188
    return-object p0
.end method

.method public show(Lo/ˈ;Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/localytics/android/TestModeButton;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    invoke-super {p0, p1, p2}, Lo/ʼ;->show(Lo/ˈ;Ljava/lang/String;)V

    .line 109
    return-void
.end method
