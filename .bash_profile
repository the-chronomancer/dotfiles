#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

for file in ~/.{aliases,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# CUDA
if [ -d "/opt/cuda/bin" ] ; then
    PATH="/opt/cuda/bin:$PATH"
    LD_LIBRARY_PATH="/opt/cuda/lib64:$LD_LIBRARY_PATH"
fi
